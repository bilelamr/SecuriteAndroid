.class final synthetic Lcom/pushwoosh/inbox/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# static fields
.field private static final a:Lcom/pushwoosh/inbox/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/c/a/c;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/c/a/c;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/c/a/c;->a:Lcom/pushwoosh/inbox/c/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/function/Callback;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/c/a/c;->a:Lcom/pushwoosh/inbox/c/a/c;

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-static {p1}, Lcom/pushwoosh/inbox/c/a/b;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method
