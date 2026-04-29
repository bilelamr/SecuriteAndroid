.class public final Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;
.super Ljava/lang/Object;
.source "PushwooshInboxUi.kt"


# static fields
.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;

.field private static onMessageClickListener:Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInboxFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 40
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;-><init>()V

    return-object v0
.end method

.method public final getOnMessageClickListener()Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;
    .locals 1

    .line 35
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;->onMessageClickListener:Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;

    return-object v0
.end method

.method public final setOnMessageClickListener(Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;)V
    .locals 0

    .line 35
    sput-object p1, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;->onMessageClickListener:Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;

    return-void
.end method
