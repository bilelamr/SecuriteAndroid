.class public final Lcom/pushwoosh/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final InlineInAppView:[I

.field public static final InlineInAppView_disableLayoutAnimation:I = 0x0

.field public static final InlineInAppView_identifier:I = 0x1

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 258
    fill-array-data v1, :array_0

    sput-object v1, Lcom/pushwoosh/R$styleable;->CoordinatorLayout:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    .line 261
    fill-array-data v1, :array_1

    sput-object v1, Lcom/pushwoosh/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 269
    fill-array-data v1, :array_2

    sput-object v1, Lcom/pushwoosh/R$styleable;->FontFamily:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 276
    fill-array-data v1, :array_3

    sput-object v1, Lcom/pushwoosh/R$styleable;->FontFamilyFont:[I

    new-array v0, v0, [I

    .line 287
    fill-array-data v0, :array_4

    sput-object v0, Lcom/pushwoosh/R$styleable;->InlineInAppView:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 290
    fill-array-data v1, :array_5

    sput-object v1, Lcom/pushwoosh/R$styleable;->LoadingImageView:[I

    new-array v0, v0, [I

    .line 294
    fill-array-data v0, :array_6

    sput-object v0, Lcom/pushwoosh/R$styleable;->SignInButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f030180
        0x7f030268
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f030185
        0x7f030186
        0x7f030187
        0x7f0301b3
        0x7f0301bc
        0x7f0301bd
    .end array-data

    :array_2
    .array-data 4
        0x7f03012d
        0x7f03012e
        0x7f03012f
        0x7f030130
        0x7f030131
        0x7f030132
    .end array-data

    :array_3
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f03012b
        0x7f030133
        0x7f030134
        0x7f030135
        0x7f0302ce
    .end array-data

    :array_4
    .array-data 4
        0x7f0300e7
        0x7f030152
    .end array-data

    :array_5
    .array-data 4
        0x7f030096
        0x7f030153
        0x7f030154
    .end array-data

    :array_6
    .array-data 4
        0x7f03006c
        0x7f0300b5
        0x7f03023c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
