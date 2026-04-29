.class final synthetic Lcom/pushwoosh/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$a;


# instance fields
.field private final a:Lcom/pushwoosh/Pushwoosh;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lcom/pushwoosh/function/Callback;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/n;->a:Lcom/pushwoosh/Pushwoosh;

    iput-object p2, p0, Lcom/pushwoosh/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/pushwoosh/n;->c:Lcom/pushwoosh/function/Callback;

    return-void
.end method

.method public static a(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;)Lcom/pushwoosh/inapp/a/a$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/n;-><init>(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/a/h;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/n;->a:Lcom/pushwoosh/Pushwoosh;

    iget-object v1, p0, Lcom/pushwoosh/n;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/pushwoosh/n;->c:Lcom/pushwoosh/function/Callback;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/Pushwoosh;->a(Lcom/pushwoosh/Pushwoosh;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inapp/a/h;)V

    return-void
.end method
