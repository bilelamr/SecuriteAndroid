.class final synthetic Lcom/pushwoosh/inapp/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/a/a;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/pushwoosh/inapp/a/a$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/d;->a:Lcom/pushwoosh/inapp/a/a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/pushwoosh/inapp/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/pushwoosh/inapp/a/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/pushwoosh/inapp/a/d;->e:Lcom/pushwoosh/inapp/a/a$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Lcom/pushwoosh/inapp/a/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inapp/a/d;-><init>(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    return-object v6
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/d;->a:Lcom/pushwoosh/inapp/a/a;

    iget-object v1, p0, Lcom/pushwoosh/inapp/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/pushwoosh/inapp/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/pushwoosh/inapp/a/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/pushwoosh/inapp/a/d;->e:Lcom/pushwoosh/inapp/a/a$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pushwoosh/inapp/a/a;->a(Lcom/pushwoosh/inapp/a/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/pushwoosh/inapp/a/a$a;)V

    return-void
.end method
