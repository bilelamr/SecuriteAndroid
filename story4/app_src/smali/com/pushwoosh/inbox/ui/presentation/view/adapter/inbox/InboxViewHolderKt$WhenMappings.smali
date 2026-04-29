.class public final synthetic Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/pushwoosh/inbox/data/InboxMessageType;->values()[Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->RICH_MEDIA:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->REMOTE_URL:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/pushwoosh/inbox/data/InboxMessageType;->DEEP_LINK:Lcom/pushwoosh/inbox/data/InboxMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
