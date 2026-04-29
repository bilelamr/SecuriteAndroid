.class public Lcom/pushwoosh/internal/platform/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/d/b;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/d/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/d/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)F
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a()Landroid/content/res/Configuration;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(ILandroid/util/TypedValue;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public b()Landroid/util/DisplayMetrics;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/internal/platform/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :goto_0
    return-object v0
.end method
