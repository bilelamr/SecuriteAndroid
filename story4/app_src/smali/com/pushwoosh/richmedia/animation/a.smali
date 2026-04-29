.class public abstract Lcom/pushwoosh/richmedia/animation/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;


# static fields
.field public static final DURATION_MILLIS:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/pushwoosh/richmedia/animation/a;->getCloseAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method abstract getCloseAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
.end method

.method abstract getOpenAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
.end method

.method public openAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/pushwoosh/richmedia/animation/a;->getOpenAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
