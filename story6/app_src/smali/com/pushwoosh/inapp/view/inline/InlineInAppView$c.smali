.class final enum Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/inline/InlineInAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

.field public static final enum b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

.field public static final enum c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

.field public static final enum d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

.field private static final synthetic e:[Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/4 v1, 0x0

    const-string v2, "LOADING"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/4 v2, 0x1

    const-string v3, "LOADED"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/4 v3, 0x2

    const-string v4, "RENDERED"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/4 v4, 0x3

    const-string v5, "CLOSED"

    invoke-direct {v0, v5, v4}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    sget-object v5, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    aput-object v5, v0, v1

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->e:[Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
    .locals 1

    const-class v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->e:[Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    invoke-virtual {v0}, [Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    return-object v0
.end method
