.class public Lcom/pushwoosh/inapp/view/inline/InlineInAppView;
.super Lcom/pushwoosh/inapp/view/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;,
        Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;,
        Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

.field private h:Z

.field private i:Lcom/pushwoosh/inapp/view/inline/k;

.field private j:Lcom/pushwoosh/inapp/view/inline/c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/f;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    sget-object v0, Lcom/pushwoosh/R$styleable;->InlineInAppView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/pushwoosh/R$styleable;->InlineInAppView_identifier:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->e:Ljava/lang/String;

    sget p2, Lcom/pushwoosh/R$styleable;->InlineInAppView_disableLayoutAnimation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->f:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)Lcom/pushwoosh/inapp/view/inline/k;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i:Lcom/pushwoosh/inapp/view/inline/k;

    return-object p0
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;IIII)V
    .locals 0

    invoke-static {p3, p1}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result p1

    invoke-static {p4, p2}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    return-object p0
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/view/inline/b;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    new-instance v1, Lcom/pushwoosh/inapp/view/inline/e;

    invoke-direct {v1, p0, v0}, Lcom/pushwoosh/inapp/view/inline/e;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/pushwoosh/inapp/view/inline/j;

    invoke-direct {v1, p0, v0}, Lcom/pushwoosh/inapp/view/inline/j;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V

    :goto_0
    iput-object v1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i:Lcom/pushwoosh/inapp/view/inline/k;

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/c;

    invoke-static {}, Lcom/pushwoosh/inapp/b;->c()Lcom/pushwoosh/inapp/e/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/view/inline/c;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/e/c;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/inline/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/c;->b()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;->onInlineInAppLoaded()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;->onInlineInAppViewClosed()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Landroid/webkit/WebView;
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$1;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Lcom/pushwoosh/inapp/e/b/a;I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method a(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inapp/view/i;

    new-instance v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;

    invoke-direct {v1, p0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)V

    invoke-direct {v0, v1, p1}, Lcom/pushwoosh/inapp/view/i;-><init>(Lcom/pushwoosh/inapp/view/c;Lcom/pushwoosh/inapp/e/b/b;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, p0}, Lcom/pushwoosh/inapp/view/i;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/i;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public addInlineInAppViewListener(Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/pushwoosh/inapp/view/f;->b()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method b(Lcom/pushwoosh/inapp/d/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/view/f;->a(Lcom/pushwoosh/inapp/d/a;)V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->h:Z

    return v0
.end method

.method getContainer()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->e:Ljava/lang/String;

    return-object v0
.end method

.method getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/f;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public isLayoutAnimationDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->f:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i:Lcom/pushwoosh/inapp/view/inline/k;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/inline/k;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->h:Z

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i:Lcom/pushwoosh/inapp/view/inline/k;

    invoke-static {p0, p1, p2}, Lcom/pushwoosh/inapp/view/inline/a;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;II)Lcom/pushwoosh/inapp/view/inline/k$a;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/pushwoosh/inapp/view/inline/k;->a(IILcom/pushwoosh/inapp/view/inline/k$a;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;

    iget-boolean v0, p1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    iget-object v1, p1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->b:Lcom/pushwoosh/inapp/view/inline/c$a;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/inline/c;->a(Lcom/pushwoosh/inapp/view/inline/c$a;)V

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    sget-object v2, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->a:Z

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/inline/c;->c()Lcom/pushwoosh/inapp/view/inline/c$a;

    move-result-object v1

    iput-object v1, v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$b;->b:Lcom/pushwoosh/inapp/view/inline/c$a;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2}, Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;->onInlineInAppViewChangedSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeInlineInAppViewListener(Lcom/pushwoosh/inapp/view/inline/InlineInAppViewListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDisableLayoutAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->f:Z

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j:Lcom/pushwoosh/inapp/view/inline/c;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/inline/c;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setState(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i()V

    :cond_0
    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->j()V

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->i:Lcom/pushwoosh/inapp/view/inline/k;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/inline/k;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    :cond_2
    return-void
.end method
