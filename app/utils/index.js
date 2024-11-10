export const CONST_STATUS = {
  SUSCCESS: 200,
  PERMISSION: 401,
  ERORRUSER: 400,
  ERRORSERVER: 500,
};

export const CONST_MESSAGE = {
    
};

export const returnResponse = (req, status, body) => {
  return res.status(status).json({ status, ...body });
};
