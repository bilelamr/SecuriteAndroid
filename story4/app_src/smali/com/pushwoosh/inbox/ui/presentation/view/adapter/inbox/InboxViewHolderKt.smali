.class public final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt;
.super Ljava/lang/Object;
.source "InboxViewHolder.kt"


# direct methods
.method public static final getResource(Lcom/pushwoosh/inbox/data/InboxMessageType;)I
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 155
    sget p0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_deep_link:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 154
    :cond_1
    sget p0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_remote_url:I

    goto :goto_0

    .line 153
    :cond_2
    sget p0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_remote_url:I

    goto :goto_0

    .line 152
    :cond_3
    sget p0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_rich_media:I

    goto :goto_0

    .line 151
    :cond_4
    sget p0, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_app_open:I

    :goto_0
    return p0
.end method
