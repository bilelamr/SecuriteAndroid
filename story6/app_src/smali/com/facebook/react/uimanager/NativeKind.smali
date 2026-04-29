.class public final enum Lcom/facebook/react/uimanager/NativeKind;
.super Ljava/lang/Enum;
.source "NativeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/uimanager/NativeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/uimanager/NativeKind;

.field public static final enum LEAF:Lcom/facebook/react/uimanager/NativeKind;

.field public static final enum NONE:Lcom/facebook/react/uimanager/NativeKind;

.field public static final enum PARENT:Lcom/facebook/react/uimanager/NativeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/facebook/react/uimanager/NativeKind;

    const/4 v1, 0x0

    const-string v2, "PARENT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/react/uimanager/NativeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/NativeKind;->PARENT:Lcom/facebook/react/uimanager/NativeKind;

    .line 22
    new-instance v0, Lcom/facebook/react/uimanager/NativeKind;

    const/4 v2, 0x1

    const-string v3, "LEAF"

    invoke-direct {v0, v3, v2}, Lcom/facebook/react/uimanager/NativeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/NativeKind;->LEAF:Lcom/facebook/react/uimanager/NativeKind;

    .line 24
    new-instance v0, Lcom/facebook/react/uimanager/NativeKind;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/react/uimanager/NativeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/NativeKind;->NONE:Lcom/facebook/react/uimanager/NativeKind;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/react/uimanager/NativeKind;

    .line 14
    sget-object v4, Lcom/facebook/react/uimanager/NativeKind;->PARENT:Lcom/facebook/react/uimanager/NativeKind;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/react/uimanager/NativeKind;->LEAF:Lcom/facebook/react/uimanager/NativeKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/react/uimanager/NativeKind;->NONE:Lcom/facebook/react/uimanager/NativeKind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/react/uimanager/NativeKind;->$VALUES:[Lcom/facebook/react/uimanager/NativeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/NativeKind;
    .locals 1

    .line 14
    const-class v0, Lcom/facebook/react/uimanager/NativeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/uimanager/NativeKind;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/uimanager/NativeKind;
    .locals 1

    .line 14
    sget-object v0, Lcom/facebook/react/uimanager/NativeKind;->$VALUES:[Lcom/facebook/react/uimanager/NativeKind;

    invoke-virtual {v0}, [Lcom/facebook/react/uimanager/NativeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/NativeKind;

    return-object v0
.end method
