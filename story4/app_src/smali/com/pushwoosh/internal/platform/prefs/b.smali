.class final synthetic Lcom/pushwoosh/internal/platform/prefs/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;


# static fields
.field private static final c:Lcom/pushwoosh/internal/platform/prefs/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/b;

    invoke-direct {v0}, Lcom/pushwoosh/internal/platform/prefs/b;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/b;->c:Lcom/pushwoosh/internal/platform/prefs/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/prefs/b;->c:Lcom/pushwoosh/internal/platform/prefs/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/pushwoosh/internal/platform/prefs/a;->a(Ljava/lang/Exception;)V

    return-void
.end method
