.class public Lcom/pushwoosh/inapp/view/b/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/inapp/e/b/b;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/pushwoosh/inapp/view/b/a/a;

.field private e:J


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;ZLcom/pushwoosh/inapp/view/b/a/a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/b/a/b;->a:Lcom/pushwoosh/inapp/e/b/b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/b/a/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/pushwoosh/inapp/view/b/a/b;->c:Z

    iput-object p4, p0, Lcom/pushwoosh/inapp/view/b/a/b;->d:Lcom/pushwoosh/inapp/view/b/a/a;

    iput-wide p5, p0, Lcom/pushwoosh/inapp/view/b/a/b;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;ZLcom/pushwoosh/inapp/view/b/a/a;JLcom/pushwoosh/inapp/view/b/a/b$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/pushwoosh/inapp/view/b/a/b;-><init>(Lcom/pushwoosh/inapp/e/b/b;Ljava/lang/String;ZLcom/pushwoosh/inapp/view/b/a/a;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/inapp/view/b/a/b;->e:J

    return-wide v0
.end method

.method public b()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a/b;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/b/a/b;->c:Z

    return v0
.end method

.method public e()Lcom/pushwoosh/inapp/view/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/b/a/b;->d:Lcom/pushwoosh/inapp/view/b/a/a;

    return-object v0
.end method
