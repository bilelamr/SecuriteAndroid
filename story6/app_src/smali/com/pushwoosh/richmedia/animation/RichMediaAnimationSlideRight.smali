.class public Lcom/pushwoosh/richmedia/animation/RichMediaAnimationSlideRight;
.super Lcom/pushwoosh/richmedia/animation/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/richmedia/animation/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloseAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public getOpenAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method
