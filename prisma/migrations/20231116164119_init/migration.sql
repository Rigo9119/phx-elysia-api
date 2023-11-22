-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,
    "birth_date" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "national_id" INTEGER NOT NULL,
    "national_id_type" TEXT NOT NULL,
    "phone" INTEGER NOT NULL,
    "terms_and_conditions" BOOLEAN NOT NULL DEFAULT false,
    "user_type" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "location" TEXT NOT NULL,
    "economic_sector" TEXT NOT NULL,
    "contract_type" TEXT NOT NULL,
    "insitution" TEXT NOT NULL,
    "projects" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Project" (
    "id" SERIAL NOT NULL,
    "aprroved" BOOLEAN NOT NULL,
    "balance" INTEGER NOT NULL,
    "capital" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,
    "dream" TEXT NOT NULL,
    "fee_rate" DECIMAL(65,30) NOT NULL,
    "finished" BOOLEAN NOT NULL,
    "initial_payment" INTEGER NOT NULL,
    "interest_rate" DECIMAL(65,30) NOT NULL,
    "matched_date" TIMESTAMP(3) NOT NULL,
    "messages" TEXT NOT NULL,
    "monthly_payment" INTEGER NOT NULL,
    "months" INTEGER NOT NULL,
    "is_new" BOOLEAN NOT NULL,
    "project_id" TEXT NOT NULL,
    "selling" BOOLEAN NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "warranty" TEXT NOT NULL,
    "users_ids" TEXT NOT NULL,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PaymentPlan" (
    "id" SERIAL NOT NULL,
    "period" INTEGER NOT NULL,
    "balance" INTEGER NOT NULL,
    "payment_date" TIMESTAMP(3) NOT NULL,
    "interest_fee" INTEGER NOT NULL,
    "capital_fee" INTEGER NOT NULL,
    "monthly_fee" INTEGER NOT NULL,
    "project_id" INTEGER NOT NULL,

    CONSTRAINT "PaymentPlan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AccountStatements" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,
    "period" INTEGER NOT NULL,
    "balance" INTEGER NOT NULL,
    "payment_date" TIMESTAMP(3) NOT NULL,
    "interest_fee" INTEGER NOT NULL,
    "capital_fee" INTEGER NOT NULL,
    "monthly_fee" INTEGER NOT NULL,
    "rate_fee" INTEGER NOT NULL,
    "cut_off_date" TIMESTAMP(3) NOT NULL,
    "late_payment" INTEGER NOT NULL,
    "app_fee" INTEGER NOT NULL,
    "project_id" INTEGER NOT NULL,

    CONSTRAINT "AccountStatements_pkey" PRIMARY KEY ("id")
);
