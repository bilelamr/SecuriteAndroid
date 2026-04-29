.class final synthetic Lcom/pushwoosh/inbox/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/b;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/h;->a:Lcom/pushwoosh/inbox/d/b;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/h;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/d/h;-><init>(Lcom/pushwoosh/inbox/d/b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/h;->a:Lcom/pushwoosh/inbox/d/b;

    invoke-static {v0}, Lcom/pushwoosh/inbox/d/b;->d(Lcom/pushwoosh/inbox/d/b;)V

    return-void
.end method
