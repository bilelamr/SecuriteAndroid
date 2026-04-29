.class public final Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;
.super Ljava/lang/Object;
.source "ContextColorSchemeProvider.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextColorSchemeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextColorSchemeProvider.kt\ncom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,246:1\n9786#2,3:247\n7764#2:250\n8081#2,3:251\n*E\n*S KotlinDebug\n*F\n+ 1 ContextColorSchemeProvider.kt\ncom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider\n*L\n205#1,3:247\n219#1:250\n219#1,3:251\n*E\n"
.end annotation


# instance fields
.field private final _accentColor:I

.field private final _backgroundColor:I

.field private final _cellBackground:Landroid/graphics/drawable/Drawable;

.field private final _dateColor:Landroid/content/res/ColorStateList;

.field private final _defaultIcon:Landroid/graphics/drawable/Drawable;

.field private final _descriptionColor:Landroid/content/res/ColorStateList;

.field private final _divider:Landroid/graphics/drawable/Drawable;

.field private final _imageColor:Landroid/content/res/ColorStateList;

.field private final _titleColor:Landroid/content/res/ColorStateList;

.field private background:I

.field private final colorResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final drawableResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private highlightColor:I

.field private final states:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    const/4 p1, 0x2

    new-array v0, p1, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a1

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v3, [I

    aput-object v2, v0, v1

    .line 81
    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->states:[[I

    .line 93
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->colorResources:Ljava/util/Map;

    .line 94
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideDrawableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->drawableResources:Ljava/util/Map;

    .line 96
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getHighlightColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxHighlightColor:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->highlightColor:I

    .line 97
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->background:I

    .line 100
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getAccentColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxAccentColor:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_accentColor:I

    .line 102
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDividerColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, p1, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 105
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "context.resources"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$dimen;->pw_divider_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto :goto_3

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->drawableResources:Ljava/util/Map;

    const v2, 0x1010214

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 103
    :goto_3
    iput-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_divider:Landroid/graphics/drawable/Drawable;

    new-array v0, p1, [Lkotlin/Pair;

    .line 112
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getImageTypeColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxImageTypeColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 113
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getReadImageTypeColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadImageTypeColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 111
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->generateStateList([Lkotlin/Pair;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_imageColor:Landroid/content/res/ColorStateList;

    new-array v0, p1, [Lkotlin/Pair;

    .line 117
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getTitleColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxTitleColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 118
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getReadTitleColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadTitleColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 116
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->generateStateList([Lkotlin/Pair;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_titleColor:Landroid/content/res/ColorStateList;

    new-array v0, p1, [Lkotlin/Pair;

    .line 122
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDescriptionColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDescriptionColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 123
    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getReadDescriptionColor()Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDescriptionColor:I

    invoke-direct {p0, v5}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 121
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->generateStateList([Lkotlin/Pair;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_descriptionColor:Landroid/content/res/ColorStateList;

    new-array p1, p1, [Lkotlin/Pair;

    .line 127
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDateColor()Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDateColor:I

    invoke-direct {p0, v4}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v3

    .line 128
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v2}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getReadDateColor()Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDateColor:I

    invoke-direct {p0, v3}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v1

    .line 126
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->generateStateList([Lkotlin/Pair;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_dateColor:Landroid/content/res/ColorStateList;

    .line 131
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideCellBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_cellBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    iget p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->background:I

    iput p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_backgroundColor:I

    .line 135
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->drawableResources:Ljava/util/Map;

    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDefaultIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDefaultImageIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDefaultImageIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4

    .line 139
    :cond_4
    sget-object v1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDefaultImageIcon()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    sget-object v1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDefaultImageIcon()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    .line 137
    :goto_4
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_defaultIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final generateStateList([Lkotlin/Pair;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/ColorStateList;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 251
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    .line 219
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    .line 222
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->states:[[I

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private final getResourceException(I)Ljava/lang/Exception;
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown attribute please set up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into your theme"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final provideCellBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 214
    iget v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->background:I

    iget v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->highlightColor:I

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/DrawableUtilsKt;->getAdaptiveRippleDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private final provideColorByAttr(I)I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->colorResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideDefaultColor(I)I

    move-result v0

    if-eqz v0, :cond_2

    move p1, v0

    :goto_1
    return p1

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->getResourceException(I)Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method private final provideColorMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 160
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxAccentColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 161
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxBackgroundColor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 162
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxHighlightColor:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 163
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxImageTypeColor:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 164
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadImageTypeColor:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 165
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxTitleColor:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 166
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadTitleColor:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 167
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDescriptionColor:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 168
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDescriptionColor:I

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 169
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDateColor:I

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 170
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDateColor:I

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 171
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->colorAccent:I

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 172
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->colorControlHighlight:I

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0xd

    const v2, 0x1010054

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x1010036

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x1010038

    aput v2, v0, v1

    .line 177
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 178
    new-instance v2, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;

    invoke-direct {v2, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideFromResource([ILkotlin/jvm/functions/Function3;)V

    return-object v1
.end method

.method private final provideDefaultColor(I)I
    .locals 1

    .line 227
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxAccentColor:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->colorAccent:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 228
    :cond_0
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxBackgroundColor:I

    if-ne p1, v0, :cond_1

    const v0, 0x1010054

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 229
    :cond_1
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxHighlightColor:I

    if-ne p1, v0, :cond_2

    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->colorControlHighlight:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 230
    :cond_2
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxImageTypeColor:I

    if-ne p1, v0, :cond_3

    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxAccentColor:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_3
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadImageTypeColor:I

    if-ne p1, v0, :cond_4

    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDateColor:I

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_4
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxTitleColor:I

    if-ne p1, v0, :cond_5

    const v0, 0x1010036

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 233
    :cond_5
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadTitleColor:I

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 234
    :cond_6
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDescriptionColor:I

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 235
    :cond_7
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDescriptionColor:I

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 236
    :cond_8
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDateColor:I

    if-ne p1, v0, :cond_9

    goto :goto_0

    .line 237
    :cond_9
    sget v0, Lcom/pushwoosh/inbox/ui/R$attr;->inboxReadDateColor:I

    if-ne p1, v0, :cond_a

    :goto_0
    const v0, 0x1010038

    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorByAttr(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_b

    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_b
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->getResourceException(I)Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method private final provideDrawableMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    .line 188
    sget v1, Lcom/pushwoosh/inbox/ui/R$attr;->inboxDefaultIcon:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 190
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    new-instance v2, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideDrawableMap$1;

    invoke-direct {v2, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideDrawableMap$1;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideFromResource([ILkotlin/jvm/functions/Function3;)V

    return-object v1
.end method

.method private final provideFromResource([ILkotlin/jvm/functions/Function3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/res/TypedArray;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 248
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "typedArray"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2, v3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getAccentColor()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_accentColor:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_backgroundColor:I

    return v0
.end method

.method public getCellBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideCellBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDateColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_dateColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_defaultIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescriptionColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_descriptionColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_divider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_imageColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTitleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->_titleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method
