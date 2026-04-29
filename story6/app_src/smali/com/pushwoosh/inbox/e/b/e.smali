.class final synthetic Lcom/pushwoosh/inbox/e/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inbox/a/a;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/e/b/b;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/e/b/e;->a:Lcom/pushwoosh/inbox/e/b/b;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/e/b/b;)Lcom/pushwoosh/inbox/a/a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/e/b/e;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/e/b/e;-><init>(Lcom/pushwoosh/inbox/e/b/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/b/e;->a:Lcom/pushwoosh/inbox/e/b/b;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/pushwoosh/inbox/e/b/b;->b(Lcom/pushwoosh/inbox/e/b/b;Landroid/database/Cursor;)Lcom/pushwoosh/inbox/internal/data/b;

    move-result-object p1

    return-object p1
.end method
