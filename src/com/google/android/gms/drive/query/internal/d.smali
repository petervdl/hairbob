.class public Lcom/google/android/gms/drive/query/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xJ:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aI(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/FilterHolder;
    .registers 13

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    move-result v9

    const/4 v1, 0x0

    move-object v7, v8

    move-object v6, v8

    move-object v5, v8

    move-object v4, v8

    move-object v3, v8

    move-object v2, v8

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v9, :cond_6c

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_92

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_c

    :sswitch_21
    sget-object v2, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/a;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    move-object v2, v0

    goto :goto_c

    :sswitch_2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_c

    :sswitch_30
    sget-object v3, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    move-object v3, v0

    goto :goto_c

    :sswitch_3a
    sget-object v4, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    move-object v4, v0

    goto :goto_c

    :sswitch_44
    sget-object v5, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    move-object v5, v0

    goto :goto_c

    :sswitch_4e
    sget-object v6, Lcom/google/android/gms/drive/query/internal/InFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/g;

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    move-object v6, v0

    goto :goto_c

    :sswitch_58
    sget-object v7, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/i;

    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    move-object v7, v0

    goto :goto_c

    :sswitch_62
    sget-object v8, Lcom/google/android/gms/drive/query/internal/HasFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/f;

    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/internal/HasFilter;

    move-object v8, v0

    goto :goto_c

    :cond_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v9, :cond_8c

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_8c
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;)V

    return-object v0

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_30
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_44
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_58
        0x7 -> :sswitch_62
        0x3e8 -> :sswitch_2b
    .end sparse-switch
.end method

.method public bE(I)[Lcom/google/android/gms/drive/query/internal/FilterHolder;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/d;->aI(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/d;->bE(I)[Lcom/google/android/gms/drive/query/internal/FilterHolder;

    move-result-object v0

    return-object v0
.end method
