.class public final enum Lcom/pushwoosh/richmedia/RichMedia$Source;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/richmedia/RichMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/richmedia/RichMedia$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pushwoosh/richmedia/RichMedia$Source;

.field public static final enum InAppSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

.field public static final enum PushMessageSource:Lcom/pushwoosh/richmedia/RichMedia$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/pushwoosh/richmedia/RichMedia$Source;

    const/4 v1, 0x0

    const-string v2, "PushMessageSource"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/richmedia/RichMedia$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/richmedia/RichMedia$Source;->PushMessageSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    new-instance v0, Lcom/pushwoosh/richmedia/RichMedia$Source;

    const/4 v2, 0x1

    const-string v3, "InAppSource"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/richmedia/RichMedia$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/richmedia/RichMedia$Source;->InAppSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pushwoosh/richmedia/RichMedia$Source;

    sget-object v3, Lcom/pushwoosh/richmedia/RichMedia$Source;->PushMessageSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pushwoosh/richmedia/RichMedia$Source;->InAppSource:Lcom/pushwoosh/richmedia/RichMedia$Source;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pushwoosh/richmedia/RichMedia$Source;->$VALUES:[Lcom/pushwoosh/richmedia/RichMedia$Source;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/richmedia/RichMedia$Source;
    .locals 1

    const-class v0, Lcom/pushwoosh/richmedia/RichMedia$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/richmedia/RichMedia$Source;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/richmedia/RichMedia$Source;
    .locals 1

    sget-object v0, Lcom/pushwoosh/richmedia/RichMedia$Source;->$VALUES:[Lcom/pushwoosh/richmedia/RichMedia$Source;

    invoke-virtual {v0}, [Lcom/pushwoosh/richmedia/RichMedia$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/richmedia/RichMedia$Source;

    return-object v0
.end method
