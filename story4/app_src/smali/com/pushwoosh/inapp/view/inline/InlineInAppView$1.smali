.class Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->a()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)Lcom/pushwoosh/inapp/view/inline/k;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/pushwoosh/inapp/view/inline/k;->a(ZIIII)V

    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method
