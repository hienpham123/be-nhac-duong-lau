import connection from "../../common/connect.js";

export const GetAllVideos = async (req, res) => {
  try {
    const pageIndex = parseInt(req.query.pageIndex) || 1;
    const pageSize = parseInt(req.query.pageSize) || 10;
    const offset = (pageIndex - 1) * pageSize;
    const [totalRows] = await connection.promise().execute("SELECT COUNT(*) as count FROM videos");
    const totalItems = totalRows[0].count;
    const [rows] = await connection
      .promise()
      .execute("SELECT * FROM videos ORDER BY createdAt DESC LIMIT ? OFFSET ?", [pageSize, offset]);
    return res.status(200).json({
      pageIndex: pageIndex,
      pageSize: pageSize,
      totalItems: totalItems,
      data: rows,
    });
  } catch (error) {
    return res.status(500).json({ message: "Error fetching videos", error });
  }
};

export const GetDetailVideos = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await connection.promise().execute("SELECT * FROM videos WHERE id = ?", [id]);

    if (rows.length === 0) {
      return res.status(404).json({ message: "Video not found" });
    }

    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({ message: "Error fetching video", error });
  }
};

export const CreateVideos = async (req, res) => {
  try {
    const {
      title,
      description,
      type_name,
      type_id,
      video_image,
      url,
      views = 0,
      likes = 0,
      dislikes = 0,
      comments = 0,
    } = req.body;

    const [result] = await connection.promise().execute(
      `INSERT INTO videos (title, description, type_name, type_id, video_image, url, views, likes, dislikes, comments) 
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [title, description, type_name, type_id, video_image, url, views, likes, dislikes, comments]
    );

    return res.status(201).json({ id: result.insertId, message: "Video created successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error creating video", error });
  }
};

export const EditVideo = async (req, res) => {
  try {
    const { id } = req.params;
    const { title, description, type_name, type_id, video_image, url, views, likes, dislikes, comments } = req.body;

    const [result] = await connection.promise().execute(
      `UPDATE videos SET title = ?, description = ?, type_name = ?, type_id = ?, video_image = ?, url = ?, 
         views = ?, likes = ?, dislikes = ?, comments = ?, updatedAt = NOW() 
         WHERE id = ?`,
      [title, description, type_name, type_id, video_image, url, views, likes, dislikes, comments, id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: "Video not found" });
    }

    res.json({ message: "Video updated successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error updating video", error });
  }
};

export const DeleteVideo = async (req, res) => {
  try {
    const { id } = req.params;

    const [result] = await connection.promise().execute("DELETE FROM videos WHERE id = ?", [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: "Video not found" });
    }

    res.json({ message: "Video deleted successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error deleting video", error });
  }
};
