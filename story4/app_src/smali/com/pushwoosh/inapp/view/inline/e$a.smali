.class Lcom/pushwoosh/inapp/view/inline/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/inline/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field static final JS_INTEFACE_NAME:Ljava/lang/String; = "pwInlineInappSizeDelegate"


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inapp/view/inline/e;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/view/inline/e;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/inapp/view/inline/e;Lcom/pushwoosh/inapp/view/inline/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/inline/e$a;-><init>(Lcom/pushwoosh/inapp/view/inline/e;)V

    return-void
.end method

.method static synthetic lambda$resize$0(Lcom/pushwoosh/inapp/view/inline/e$a;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    iget-object v0, v0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/inline/k;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->setState(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public resize(FF)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/inline/e;->a(Lcom/pushwoosh/inapp/view/inline/e;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {v1}, Lcom/pushwoosh/inapp/view/inline/e;->b(Lcom/pushwoosh/inapp/view/inline/e;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {v1}, Lcom/pushwoosh/inapp/view/inline/e;->c(Lcom/pushwoosh/inapp/view/inline/e;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {v1}, Lcom/pushwoosh/inapp/view/inline/e;->a(Lcom/pushwoosh/inapp/view/inline/e;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    iget-object v2, v2, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-static {v1, p1}, Lcom/pushwoosh/inapp/view/inline/e;->a(Lcom/pushwoosh/inapp/view/inline/e;I)I

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    iget-object v1, v1, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/pushwoosh/inapp/view/inline/e;->b(Lcom/pushwoosh/inapp/view/inline/e;I)I

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/e$a;->this$0:Lcom/pushwoosh/inapp/view/inline/e;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/e;->a(Lcom/pushwoosh/inapp/view/inline/e;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/inline/i;->a(Lcom/pushwoosh/inapp/view/inline/e$a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
