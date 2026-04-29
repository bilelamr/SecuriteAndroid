.class public Lcom/pushwoosh/richmedia/animation/RichMediaAnimationCrossFade;
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

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object p1
.end method

.method public getOpenAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object p1
.end method
