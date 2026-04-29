.class public final Lcom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt;
.super Ljava/lang/Object;
.source "DrawableUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableUtils.kt\ncom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,65:1\n58#2,5:66\n*E\n*S KotlinDebug\n*F\n+ 1 DrawableUtils.kt\ncom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt\n*L\n48#1,5:66\n*E\n"
.end annotation


# direct methods
.method public static final getAdaptiveRippleDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 41
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt;->getRippleMask(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 40
    invoke-direct {v0, p1, v1, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt;->getStateListDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final getRippleMask(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 67
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/high16 v3, 0x40400000    # 3.0f

    .line 48
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "shapeDrawable.paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static final getStateListDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 58
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 59
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v4, 0x101009c

    aput v4, v2, v3

    .line 60
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10102fe

    aput v2, v1, v3

    .line 61
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v3, [I

    .line 62
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
