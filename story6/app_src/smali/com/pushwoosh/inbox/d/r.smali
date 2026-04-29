.class final synthetic Lcom/pushwoosh/inbox/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/d/b;

.field private final b:Lcom/pushwoosh/function/Callback;

.field private final c:J

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/r;->a:Lcom/pushwoosh/inbox/d/b;

    iput-object p2, p0, Lcom/pushwoosh/inbox/d/r;->b:Lcom/pushwoosh/function/Callback;

    iput-wide p3, p0, Lcom/pushwoosh/inbox/d/r;->c:J

    iput p5, p0, Lcom/pushwoosh/inbox/d/r;->d:I

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JI)Lcom/pushwoosh/function/Callback;
    .locals 7

    new-instance v6, Lcom/pushwoosh/inbox/d/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pushwoosh/inbox/d/r;-><init>(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JI)V

    return-object v6
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 6

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/r;->a:Lcom/pushwoosh/inbox/d/b;

    iget-object v1, p0, Lcom/pushwoosh/inbox/d/r;->b:Lcom/pushwoosh/function/Callback;

    iget-wide v2, p0, Lcom/pushwoosh/inbox/d/r;->c:J

    iget v4, p0, Lcom/pushwoosh/inbox/d/r;->d:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/d/b;Lcom/pushwoosh/function/Callback;JILcom/pushwoosh/function/Result;)V

    return-void
.end method
