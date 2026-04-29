.class public final Lcom/pushwoosh/inbox/ui/utils/DateExtensionKt;
.super Ljava/lang/Object;
.source "DateExtension.kt"


# direct methods
.method public static final parseToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getDateFormatter()Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/Formatter;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
