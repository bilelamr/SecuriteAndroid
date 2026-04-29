.class Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt__ReversedViewsKt;
.source "_Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2232:1\n222#1,2:2233\n428#1,7:2235\n441#1,6:2242\n689#1,2:2248\n634#1:2250\n1492#1,2:2251\n635#1,2:2253\n1494#1:2255\n637#1:2256\n1492#1,3:2257\n651#1,2:2260\n681#1,2:2262\n1032#1,4:2268\n1005#1,4:2272\n1019#1,4:2276\n1130#1,5:2280\n1171#1,3:2285\n1174#1,3:2295\n1189#1,3:2298\n1192#1,3:2308\n1285#1,3:2325\n1257#1,4:2328\n1246#1:2332\n1492#1,3:2333\n1247#1:2336\n1492#1,3:2337\n1276#1:2340\n1483#1,2:2341\n1277#1:2343\n1483#1,2:2344\n689#1,2:2346\n659#1:2348\n681#1,2:2349\n659#1:2351\n681#1,2:2352\n659#1:2354\n681#1,2:2355\n1981#1,8:2357\n2002#1,7:2365\n44#2,2:2264\n44#2,2:2266\n279#3,7:2288\n279#3,7:2301\n279#3,7:2311\n279#3,7:2318\n*E\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n137#1,2:2233\n145#1,7:2235\n153#1,6:2242\n616#1,2:2248\n625#1:2250\n625#1,2:2251\n625#1,2:2253\n625#1:2255\n625#1:2256\n634#1,3:2257\n644#1,2:2260\n659#1,2:2262\n969#1,4:2268\n982#1,4:2272\n994#1,4:2276\n1123#1,5:2280\n1146#1,3:2285\n1146#1,3:2295\n1159#1,3:2298\n1159#1,3:2308\n1216#1,3:2325\n1226#1,4:2328\n1236#1:2332\n1236#1,3:2333\n1236#1:2336\n1246#1,3:2337\n1268#1:2340\n1268#1,2:2341\n1268#1:2343\n1276#1,2:2344\n1807#1,2:2346\n1816#1:2348\n1816#1,2:2349\n1826#1:2351\n1826#1,2:2352\n1836#1:2354\n1836#1,2:2355\n1974#1,8:2357\n1995#1,7:2365\n833#1,2:2264\n866#1,2:2266\n1146#1,7:2288\n1159#1,7:2301\n1173#1,7:2311\n1191#1,7:2318\n*E\n"
.end annotation


# direct methods
.method public static toIntArray(Ljava/util/Collection;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 932
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 933
    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
