.class final synthetic Lcom/pushwoosh/inbox/e/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/a/a;


# static fields
.field private static final a:Lcom/pushwoosh/inbox/e/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/e/b/d;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/e/b/d;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/e/b/d;->a:Lcom/pushwoosh/inbox/e/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/inbox/a/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/e/b/d;->a:Lcom/pushwoosh/inbox/e/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/pushwoosh/inbox/e/b/b;->a(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
