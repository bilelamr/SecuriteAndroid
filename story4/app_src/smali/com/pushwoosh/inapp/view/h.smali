.class final synthetic Lcom/pushwoosh/inapp/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/view/RichMediaWebActivity;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/h;->a:Lcom/pushwoosh/inapp/view/RichMediaWebActivity;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/h;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/h;-><init>(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/h;->a:Lcom/pushwoosh/inapp/view/RichMediaWebActivity;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/RichMediaWebActivity;->a(Lcom/pushwoosh/inapp/view/RichMediaWebActivity;)V

    return-void
.end method
