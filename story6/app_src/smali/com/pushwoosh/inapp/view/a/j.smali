.class final synthetic Lcom/pushwoosh/inapp/view/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# static fields
.field private static final a:Lcom/pushwoosh/inapp/view/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/a/j;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/a/j;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/view/a/j;->a:Lcom/pushwoosh/inapp/view/a/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/function/Callback;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/a/j;->a:Lcom/pushwoosh/inapp/view/a/j;

    return-object v0
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/a/g;->a(Lcom/pushwoosh/function/Result;)V

    return-void
.end method
