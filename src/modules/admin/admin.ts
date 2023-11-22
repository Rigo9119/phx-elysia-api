import Elysia from "elysia";

export const admin = (app: Elysia) =>
  app.group("/admin", (app) =>
    app.get("/info", () => {
      return "admin info";
    })
  );
