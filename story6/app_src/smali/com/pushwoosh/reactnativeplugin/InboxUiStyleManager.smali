.class Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;
.super Ljava/lang/Object;
.source "InboxUiStyleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;
    }
.end annotation


# static fields
.field private static final ACCENT_COLOR_KEY:Ljava/lang/String; = "accentColor"

.field private static final BACKGROUND_COLOR_KEY:Ljava/lang/String; = "backgroundColor"

.field private static final BAR_ACCENT_COLOR:Ljava/lang/String; = "barAccentColor"

.field private static final BAR_BACKGROUND_COLOR:Ljava/lang/String; = "barBackgroundColor"

.field private static final BAR_TEXT_COLOR:Ljava/lang/String; = "barTextColor"

.field private static final DATE_COLOR_KEY:Ljava/lang/String; = "dateColor"

.field private static final DATE_FORMAT_KEY:Ljava/lang/String; = "dateFormat"

.field private static final DEFAULT_IMAGE_ICON_KEY:Ljava/lang/String; = "defaultImageIcon"

.field private static final DESCRIPTION_COLOR_KEY:Ljava/lang/String; = "descriptionColor"

.field private static final DIVIDER_COLOR_KEY:Ljava/lang/String; = "dividerColor"

.field private static final HIGHLIGHT_COLOR_KEY:Ljava/lang/String; = "highlightColor"

.field private static final LIST_EMPTY_IMAGE_KEY:Ljava/lang/String; = "listEmptyImage"

.field private static final LIST_EMPTY_MESSAGE_KEY:Ljava/lang/String; = "listEmptyMessage"

.field private static final LIST_ERROR_IMAGE_KEY:Ljava/lang/String; = "listErrorImage"

.field private static final LIST_ERROR_MESSAGE_KEY:Ljava/lang/String; = "listErrorMessage"

.field private static final READ_DATE_COLOR_KEY:Ljava/lang/String; = "readDateColor"

.field private static final READ_DESCRIPTION_COLOR_KEY:Ljava/lang/String; = "readDescriptionColor"

.field private static final READ_TITLE_COLOR_KEY:Ljava/lang/String; = "readTitleColor"

.field private static final TITLE_COLOR_KEY:Ljava/lang/String; = "titleColor"

.field public static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getImage(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 90
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string p2, "uri"

    .line 94
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private setColors(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 114
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    const-string v1, "accentColor"

    .line 116
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setAccentColor(Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "highlightColor"

    .line 118
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setHighlightColor(Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "backgroundColor"

    .line 120
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setBackgroundColor(Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "dividerColor"

    .line 122
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setDividerColor(Ljava/lang/Integer;)V

    :cond_3
    const-string v1, "dateColor"

    .line 125
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setDateColor(Ljava/lang/Integer;)V

    :cond_4
    const-string v1, "readDateColor"

    .line 127
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setReadDateColor(Ljava/lang/Integer;)V

    :cond_5
    const-string v1, "titleColor"

    .line 130
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setTitleColor(Ljava/lang/Integer;)V

    :cond_6
    const-string v1, "readTitleColor"

    .line 132
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setReadTitleColor(Ljava/lang/Integer;)V

    :cond_7
    const-string v1, "descriptionColor"

    .line 135
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setDescriptionColor(Ljava/lang/Integer;)V

    :cond_8
    const-string v1, "readDescriptionColor"

    .line 137
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 138
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setReadDescriptionColor(Ljava/lang/Integer;)V

    :cond_9
    const-string v1, "barBackgroundColor"

    .line 140
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setBarBackgroundColor(Ljava/lang/Integer;)V

    :cond_a
    const-string v1, "barAccentColor"

    .line 142
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 143
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setBarAccentColor(Ljava/lang/Integer;)V

    :cond_b
    const-string v1, "barTextColor"

    .line 144
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 145
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setBarTextColor(Ljava/lang/Integer;)V

    :cond_c
    return-void
.end method

.method private setDateFormat(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const-string v0, "dateFormat"

    .line 56
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;-><init>(Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setDateFormatter(Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;)V

    :cond_1
    return-void
.end method

.method private setImages(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    const-string v1, "defaultImageIcon"

    .line 76
    invoke-direct {p0, p1, v1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->getImage(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setDefaultImageIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v1, "listErrorImage"

    .line 80
    invoke-direct {p0, p1, v1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->getImage(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setListErrorImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string v1, "listEmptyImage"

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->getImage(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setListEmptyImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private setTexts(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    const-string v1, "listErrorMessage"

    .line 68
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setListErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "listEmptyMessage"

    .line 70
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->setListEmptyText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setStyle(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->setDateFormat(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->setImages(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->setTexts(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;->setColors(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
