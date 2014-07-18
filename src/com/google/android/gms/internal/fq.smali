.class public Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fr;


# instance fields
.field public final name:Ljava/lang/String;

.field public final weight:I

.field final xJ:I

.field public final xY:Ljava/lang/String;

.field public final xZ:Z

.field public final ya:Z

.field public final yb:Ljava/lang/String;

.field public final yc:[Lcom/google/android/gms/internal/fn;

.field final yd:[I

.field public final ye:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/fr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fq;->CREATOR:Lcom/google/android/gms/internal/fr;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fn;[ILjava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fq;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fq;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fq;->xY:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fq;->xZ:Z

    iput p5, p0, Lcom/google/android/gms/internal/fq;->weight:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fq;->ya:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/fq;->yb:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/fq;->yc:[Lcom/google/android/gms/internal/fn;

    iput-object p9, p0, Lcom/google/android/gms/internal/fq;->yd:[I

    iput-object p10, p0, Lcom/google/android/gms/internal/fq;->ye:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fq;->CREATOR:Lcom/google/android/gms/internal/fr;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/fq;

    if-eqz v1, :cond_22

    check-cast p1, Lcom/google/android/gms/internal/fq;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->xY:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fq;->xY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fq;->xZ:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fq;->xZ:Z

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fq;->CREATOR:Lcom/google/android/gms/internal/fr;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fr;->a(Lcom/google/android/gms/internal/fq;Landroid/os/Parcel;I)V

    return-void
.end method
