.class final synthetic Lcom/pushwoosh/inapp/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lcom/pushwoosh/inapp/a/a$a;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/b;->b:Lcom/pushwoosh/inapp/a/a$a;

    iput-object p3, p0, Lcom/pushwoosh/inapp/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/inapp/a/b;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/b;->b:Lcom/pushwoosh/inapp/a/a$a;

    iget-object v2, p0, Lcom/pushwoosh/inapp/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2}, Lcom/pushwoosh/inapp/a/a;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
