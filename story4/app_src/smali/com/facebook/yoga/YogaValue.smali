.class public Lcom/facebook/yoga/YogaValue;
.super Ljava/lang/Object;
.source "YogaValue.java"


# instance fields
.field public final unit:Lcom/facebook/yoga/YogaUnit;

.field public final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    .line 11
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    .line 12
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    invoke-direct {v0, v2, v1}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    return-void
.end method

.method constructor <init>(FI)V
    .locals 0

    .line 23
    invoke-static {p2}, Lcom/facebook/yoga/YogaUnit;->fromInt(I)Lcom/facebook/yoga/YogaUnit;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    return-void
.end method

.method public constructor <init>(FLcom/facebook/yoga/YogaUnit;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/facebook/yoga/YogaValue;->value:F

    .line 19
    iput-object p2, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28
    instance-of v0, p1, Lcom/facebook/yoga/YogaValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 29
    check-cast p1, Lcom/facebook/yoga/YogaValue;

    .line 30
    iget-object v0, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    iget-object v2, p1, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    if-ne v0, v2, :cond_1

    .line 31
    sget-object v2, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/facebook/yoga/YogaValue;->value:F

    iget p1, p1, Lcom/facebook/yoga/YogaValue;->value:F

    .line 33
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 41
    iget v0, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/facebook/yoga/YogaValue$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "auto"

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_2
    iget v0, p0, Lcom/facebook/yoga/YogaValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "undefined"

    return-object v0
.end method
