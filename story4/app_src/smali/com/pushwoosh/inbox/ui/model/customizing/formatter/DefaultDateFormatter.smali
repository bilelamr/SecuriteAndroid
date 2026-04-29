.class public final Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;
.super Ljava/lang/Object;
.source "InboxDateFormatter.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/model/customizing/formatter/InboxDateFormatter;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;-><init>(Ljava/text/DateFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 1

    const-string v0, "dateFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/text/DateFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 47
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "MMM dd"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;-><init>(Ljava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;->transform(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/customizing/formatter/DefaultDateFormatter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dateFormat.format(input)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
