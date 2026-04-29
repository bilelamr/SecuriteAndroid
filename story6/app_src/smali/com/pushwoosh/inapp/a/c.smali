.class final synthetic Lcom/pushwoosh/inapp/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$f;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/a/a;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcom/pushwoosh/inapp/a/a$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/c;->a:Lcom/pushwoosh/inapp/a/a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/c;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/pushwoosh/inapp/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/pushwoosh/inapp/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/pushwoosh/inapp/a/c;->e:Lcom/pushwoosh/inapp/a/a$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;)Lcom/pushwoosh/inapp/a/a$f;
    .locals 7

    new-instance v6, Lcom/pushwoosh/inapp/a/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/c;-><init>(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;)V

    return-object v6
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/c;->a:Lcom/pushwoosh/inapp/a/a;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/c;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pushwoosh/inapp/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/pushwoosh/inapp/a/c;->e:Lcom/pushwoosh/inapp/a/a$a;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/a;->a(Lcom/pushwoosh/inapp/a/a;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/pushwoosh/inapp/a/a$a;Ljava/lang/String;)V

    return-void
.end method
