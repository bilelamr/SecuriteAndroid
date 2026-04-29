.class public final Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;
.super Ljava/lang/Object;
.source "PushwooshInboxStyle.kt"


# static fields
.field public static final EMPTY_ANIMATION:I = -0x1

.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

.field private static accentColor:Ljava/lang/Integer;

.field private static backgroundColor:Ljava/lang/Integer;

.field private static barAccentColor:Ljava/lang/Integer;

.field private static barBackgroundColor:Ljava/lang/Integer;

.field private static barTextColor:Ljava/lang/Integer;

.field private static barTitle:Ljava/lang/String;

.field private static dateColor:Ljava/lang/Integer;

.field private static dateFormatter:Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;

.field private static defaultImageIcon:I

.field private static defaultImageIconDrawable:Landroid/graphics/drawable/Drawable;

.field private static descriptionColor:Ljava/lang/Integer;

.field private static dividerColor:Ljava/lang/Integer;

.field private static highlightColor:Ljava/lang/Integer;

.field private static imageTypeColor:Ljava/lang/Integer;

.field private static listAnimation:Landroid/view/animation/Animation;

.field private static listAnimationResource:I

.field private static listEmptyImage:I

.field private static listEmptyImageDrawable:Landroid/graphics/drawable/Drawable;

.field private static listEmptyText:Ljava/lang/CharSequence;

.field private static listErrorImage:I

.field private static listErrorImageDrawable:Landroid/graphics/drawable/Drawable;

.field private static listErrorMessage:Ljava/lang/CharSequence;

.field private static readDateColor:Ljava/lang/Integer;

.field private static readDescriptionColor:Ljava/lang/Integer;

.field private static readImageTypeColor:Ljava/lang/Integer;

.field private static readTitleColor:Ljava/lang/Integer;

.field private static titleColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    .line 48
    new-instance v0, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;-><init>(Ljava/text/DateFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateFormatter:Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;

    const v0, 0x10a0002

    .line 54
    sput v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listAnimationResource:I

    const/4 v0, -0x1

    .line 61
    sput v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->defaultImageIcon:I

    .line 67
    sget v0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_error:I

    sput v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorImage:I

    const-string v0, "It seems something went wrong. Please try again later!"

    .line 73
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorMessage:Ljava/lang/CharSequence;

    .line 78
    sget v0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_empty:I

    sput v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyImage:I

    const-string v0, "Currently there are no messages in the Inbox."

    .line 85
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyText:Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearColors()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->accentColor:Ljava/lang/Integer;

    .line 170
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->backgroundColor:Ljava/lang/Integer;

    .line 171
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->highlightColor:Ljava/lang/Integer;

    .line 172
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->imageTypeColor:Ljava/lang/Integer;

    .line 173
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readImageTypeColor:Ljava/lang/Integer;

    .line 174
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->titleColor:Ljava/lang/Integer;

    .line 175
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readTitleColor:Ljava/lang/Integer;

    .line 176
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->descriptionColor:Ljava/lang/Integer;

    .line 177
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDescriptionColor:Ljava/lang/Integer;

    .line 178
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateColor:Ljava/lang/Integer;

    .line 179
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDateColor:Ljava/lang/Integer;

    .line 180
    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dividerColor:Ljava/lang/Integer;

    return-void
.end method

.method public final getAccentColor()Ljava/lang/Integer;
    .locals 1

    .line 90
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->accentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 95
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->backgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBarAccentColor()Ljava/lang/Integer;
    .locals 1

    .line 151
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barAccentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBarBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 146
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBarTextColor()Ljava/lang/Integer;
    .locals 1

    .line 156
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBarTitle()Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateColor()Ljava/lang/Integer;
    .locals 1

    .line 131
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDateFormatter()Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;
    .locals 1

    .line 48
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateFormatter:Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;

    return-object v0
.end method

.method public final getDefaultImageIcon()I
    .locals 1

    .line 61
    sget v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->defaultImageIcon:I

    return v0
.end method

.method public final getDefaultImageIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 62
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->defaultImageIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDescriptionColor()Ljava/lang/Integer;
    .locals 1

    .line 122
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->descriptionColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDividerColor()Ljava/lang/Integer;
    .locals 1

    .line 141
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dividerColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHighlightColor()Ljava/lang/Integer;
    .locals 1

    .line 99
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->highlightColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageTypeColor()Ljava/lang/Integer;
    .locals 1

    .line 104
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->imageTypeColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getListAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 55
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getListAnimationResource()I
    .locals 1

    .line 54
    sget v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listAnimationResource:I

    return v0
.end method

.method public final getListEmptyImage()I
    .locals 1

    .line 78
    sget v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyImage:I

    return v0
.end method

.method public final getListEmptyImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 81
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getListEmptyText()Ljava/lang/CharSequence;
    .locals 1

    .line 85
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getListErrorImage()I
    .locals 1

    .line 67
    sget v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorImage:I

    return v0
.end method

.method public final getListErrorImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 68
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getListErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 73
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getReadDateColor()Ljava/lang/Integer;
    .locals 1

    .line 136
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDateColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReadDescriptionColor()Ljava/lang/Integer;
    .locals 1

    .line 126
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDescriptionColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReadImageTypeColor()Ljava/lang/Integer;
    .locals 1

    .line 108
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readImageTypeColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReadTitleColor()Ljava/lang/Integer;
    .locals 1

    .line 117
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readTitleColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitleColor()Ljava/lang/Integer;
    .locals 1

    .line 113
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->titleColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAccentColor(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->accentColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBarAccentColor(Ljava/lang/Integer;)V
    .locals 0

    .line 151
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barAccentColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBarBackgroundColor(Ljava/lang/Integer;)V
    .locals 0

    .line 146
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBarTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 156
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBarTitle(Ljava/lang/String;)V
    .locals 0

    .line 162
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->barTitle:Ljava/lang/String;

    return-void
.end method

.method public final setDateColor(Ljava/lang/Integer;)V
    .locals 0

    .line 131
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setDateFormatter(Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dateFormatter:Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;

    return-void
.end method

.method public final setDefaultImageIcon(I)V
    .locals 0

    .line 61
    sput p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->defaultImageIcon:I

    return-void
.end method

.method public final setDefaultImageIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 62
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->defaultImageIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDescriptionColor(Ljava/lang/Integer;)V
    .locals 0

    .line 122
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->descriptionColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setDividerColor(Ljava/lang/Integer;)V
    .locals 0

    .line 141
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->dividerColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setHighlightColor(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->highlightColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageTypeColor(Ljava/lang/Integer;)V
    .locals 0

    .line 104
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->imageTypeColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setListAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 55
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public final setListAnimationResource(I)V
    .locals 0

    .line 54
    sput p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listAnimationResource:I

    return-void
.end method

.method public final setListEmptyImage(I)V
    .locals 0

    .line 78
    sput p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyImage:I

    return-void
.end method

.method public final setListEmptyImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 81
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setListEmptyText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 85
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listEmptyText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setListErrorImage(I)V
    .locals 0

    .line 67
    sput p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorImage:I

    return-void
.end method

.method public final setListErrorImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 68
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setListErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 73
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->listErrorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setReadDateColor(Ljava/lang/Integer;)V
    .locals 0

    .line 136
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDateColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setReadDescriptionColor(Ljava/lang/Integer;)V
    .locals 0

    .line 126
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readDescriptionColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setReadImageTypeColor(Ljava/lang/Integer;)V
    .locals 0

    .line 108
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readImageTypeColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setReadTitleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 117
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->readTitleColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setTitleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->titleColor:Ljava/lang/Integer;

    return-void
.end method
