.class Lcom/pushwoosh/inapp/view/inline/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/inline/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/b;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView;
    .locals 0

    iget-object p0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/b;->c()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v2, p0, Lcom/pushwoosh/inapp/view/inline/b;->b:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/pushwoosh/inapp/view/inline/b;->a(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    instance-of v2, v2, Lcom/pushwoosh/inapp/view/inline/b$a;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/inapp/view/inline/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/b;->d()V

    return-void
.end method

.method private c()Landroid/animation/LayoutTransition;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/inapp/view/inline/b$a;-><init>(Lcom/pushwoosh/inapp/view/inline/b$1;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-object v0
.end method

.method static synthetic c(Lcom/pushwoosh/inapp/view/inline/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/b;->b()V

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v1

    sget-object v2, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v1

    sget-object v2, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne v1, v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/b;->d()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->isLayoutAnimationDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/b;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/pushwoosh/inapp/view/inline/b;->c()Landroid/animation/LayoutTransition;

    move-result-object v1

    new-instance v2, Lcom/pushwoosh/inapp/view/inline/b$1;

    invoke-direct {v2, p0, v0}, Lcom/pushwoosh/inapp/view/inline/b$1;-><init>(Lcom/pushwoosh/inapp/view/inline/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/pushwoosh/inapp/view/inline/b;->a(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_1
    return-void
.end method
