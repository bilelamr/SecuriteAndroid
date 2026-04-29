.class final synthetic Lcom/pushwoosh/inbox/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/b;

.field private final b:Landroid/util/Pair;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/j;->a:Lcom/pushwoosh/inbox/d/b;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/j;->b:Landroid/util/Pair;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/j;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/inbox/d/j;-><init>(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/j;->a:Lcom/pushwoosh/inbox/d/b;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/j;->b:Landroid/util/Pair;

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;Landroid/util/Pair;)V

    return-void
.end method
