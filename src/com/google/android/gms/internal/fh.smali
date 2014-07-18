.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fi;


# instance fields
.field final xJ:I

.field final xK:[Lcom/google/android/gms/internal/fl;

.field public final xL:Ljava/lang/String;

.field public final xM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/fi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/internal/fl;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fh;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fh;->xK:[Lcom/google/android/gms/internal/fl;

    iput-object p3, p0, Lcom/google/android/gms/internal/fh;->xL:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fh;->xM:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fi;->a(Lcom/google/android/gms/internal/fh;Landroid/os/Parcel;I)V

    return-void
.end method
