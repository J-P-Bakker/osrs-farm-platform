CREATE TABLE "accounts" (
  "account_number" serial NOT NULL,
  "date_created" timestamp NOT NULL,
  "email" text NOT NULL,
  "password" text NOT NULL,
  "proxy" text NULL,
  "banned" boolean NOT NULL DEFAULT false,
  "member" boolean NOT NULL DEFAULT false,
  "completed_tutorial_island" boolean NOT NULL DEFAULT false,
  "active" boolean NOT NULL DEFAULT false,

  "agility" smallint NOT NULL DEFAULT '1',
  "attack" smallint NOT NULL DEFAULT '1',
  "construction" smallint NOT NULL DEFAULT '1',
  "cooking" smallint NOT NULL DEFAULT '1',
  "crafting" smallint NOT NULL DEFAULT '1',
  "defence" smallint NOT NULL DEFAULT '1',
  "farming" smallint NOT NULL DEFAULT '1',
  "firemaking" smallint NOT NULL DEFAULT '1',
  "fishing" smallint NOT NULL DEFAULT '1',
  "fletching" smallint NOT NULL DEFAULT '1',
  "herblore" smallint NOT NULL DEFAULT '1',
  "hitpoints" smallint NOT NULL DEFAULT '10',
  "hunter" smallint NOT NULL DEFAULT '1',
  "magic" smallint NOT NULL DEFAULT '1',
  "mining" smallint NOT NULL DEFAULT '1',
  "prayer" smallint NOT NULL DEFAULT '1',
  "ranged" smallint NOT NULL DEFAULT '1',
  "runecrafting" smallint NOT NULL DEFAULT '1',
  "slayer" smallint NOT NULL DEFAULT '1',
  "smithing" smallint NOT NULL DEFAULT '1',
  "strength" smallint NOT NULL DEFAULT '1',
  "thieving" smallint NOT NULL DEFAULT '1',
  "woodcutting" smallint NOT NULL DEFAULT '1',
  "total_level" smallint NOT NULL DEFAULT '32'
);
COMMENT ON COLUMN "accounts"."account_number" IS 'The number of the account';
COMMENT ON COLUMN "accounts"."date_created" IS 'The date/time the account was created';
COMMENT ON COLUMN "accounts"."email" IS 'The email address of the account';
COMMENT ON COLUMN "accounts"."password" IS 'The password of the account';
COMMENT ON COLUMN "accounts"."proxy" IS 'The proxy the account was created on';
COMMENT ON COLUMN "accounts"."banned" IS 'Is the account banned';
COMMENT ON COLUMN "accounts"."member" IS 'Is the account member';
COMMENT ON COLUMN "accounts"."agility" IS 'The accounts agility level';
COMMENT ON COLUMN "accounts"."attack" IS 'The accounts attack level';
COMMENT ON COLUMN "accounts"."construction" IS 'The accounts construction level';
COMMENT ON COLUMN "accounts"."cooking" IS 'The accounts cooking level';
COMMENT ON COLUMN "accounts"."crafting" IS 'The accounts crafting level';
COMMENT ON COLUMN "accounts"."defence" IS 'The accounts defence level';
COMMENT ON COLUMN "accounts"."farming" IS 'The accounts farming level';
COMMENT ON COLUMN "accounts"."firemaking" IS 'The accounts firemaking level';
COMMENT ON COLUMN "accounts"."fishing" IS 'The accounts fishing level';
COMMENT ON COLUMN "accounts"."fletching" IS 'The accounts fletching level';
COMMENT ON COLUMN "accounts"."herblore" IS 'The accounts herblore level';
COMMENT ON COLUMN "accounts"."hitpoints" IS 'The accounts hitpoints level';
COMMENT ON COLUMN "accounts"."hunter" IS 'The accounts hunter level';
COMMENT ON COLUMN "accounts"."magic" IS 'The accounts magic level';
COMMENT ON COLUMN "accounts"."mining" IS 'The accounts mining level';
COMMENT ON COLUMN "accounts"."prayer" IS 'The accounts prayer level';
COMMENT ON COLUMN "accounts"."ranged" IS 'The accounts ranged level';
COMMENT ON COLUMN "accounts"."runecrafting" IS 'The accounts runecrafting level';
COMMENT ON COLUMN "accounts"."slayer" IS 'The accounts slayer level';
COMMENT ON COLUMN "accounts"."smithing" IS 'The accounts smithing level';
COMMENT ON COLUMN "accounts"."strength" IS 'The accounts strength level';
COMMENT ON COLUMN "accounts"."thieving" IS 'The accounts thieving level';
COMMENT ON COLUMN "accounts"."woodcutting" IS 'The accounts woodcutting level';
COMMENT ON COLUMN "accounts"."total_level" IS 'The accounts total level';
COMMENT ON COLUMN "accounts"."completed_tutorial_island" IS 'Had the account completed Tutorial Island';
COMMENT ON COLUMN "accounts"."active" IS 'Check if the account is currently in use';