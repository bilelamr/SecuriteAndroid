.class public Landroidx/work/impl/WorkDatabaseMigrations;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;
    }
.end annotation


# static fields
.field public static MIGRATION_1_2:Landroidx/room/migration/Migration;

.field public static MIGRATION_3_4:Landroidx/room/migration/Migration;

.field public static MIGRATION_4_5:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/WorkDatabaseMigrations$1;-><init>(II)V

    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    .line 112
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$2;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/WorkDatabaseMigrations$2;-><init>(II)V

    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 124
    new-instance v0, Landroidx/work/impl/WorkDatabaseMigrations$3;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/WorkDatabaseMigrations$3;-><init>(II)V

    sput-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-void
.end method
