.class final synthetic Lcom/pushwoosh/appevents/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/pushwoosh/appevents/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/appevents/a;

    invoke-direct {v0}, Lcom/pushwoosh/appevents/a;-><init>()V

    sput-object v0, Lcom/pushwoosh/appevents/a;->a:Lcom/pushwoosh/appevents/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/pushwoosh/appevents/a;->a:Lcom/pushwoosh/appevents/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/pushwoosh/appevents/PushwooshAppEvents$a;->a()V

    return-void
.end method
