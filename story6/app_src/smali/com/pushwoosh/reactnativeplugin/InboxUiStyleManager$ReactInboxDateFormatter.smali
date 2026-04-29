.class Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;
.super Ljava/lang/Object;
.source "InboxUiStyleManager.java"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactInboxDateFormatter"
.end annotation


# instance fields
.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;Ljava/lang/String;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;->this$0:Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;->transform(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/pushwoosh/reactnativeplugin/InboxUiStyleManager$ReactInboxDateFormatter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
