import { Elysia } from "elysia";
import { PrismaClient } from "@prisma/client";
import { auth } from "./modules/auth";
import { user } from "./modules/user";
import { project } from "./modules/project";
import { statements } from "./modules/statements";
import { payment_plan } from "./modules/payment_plan";
import { admin } from "./modules/admin/admin";

export const db = new PrismaClient();

const app = new Elysia()
  .use(auth)
  .use(user)
  .use(project)
  .use(statements)
  .use(payment_plan)
  .use(admin)
  .listen(3000) 

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
);
