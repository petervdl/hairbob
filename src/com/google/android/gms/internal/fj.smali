.class public Lcom/google/android/gms/internal/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fk;


# instance fields
.field final xJ:I

.field final xN:Ljava/lang/String;

.field final xO:Ljava/lang/String;

.field final xP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/fk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fj;->CREATOR:Lcom/google/android/gms/internal/fk;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fj;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fj;->xN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fj;->xO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fj;->xP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fj;->CREATOR:Lcom/google/android/gms/internal/fk;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "DocumentId[packageName=%s, corpusName=%s, uri=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fj;->xN:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/fj;->xO:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/fj;->xP:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fj;->CREATOR:Lcom/google/android/gms/internal/fk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fj;Landroid/os/Parcel;I)V

    return-void
.end method
