.class public Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fo;


# instance fields
.field public final id:I

.field final xJ:I

.field final xV:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/fo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fn;->CREATOR:Lcom/google/android/gms/internal/fo;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fn;->xJ:I

    iput p2, p0, Lcom/google/android/gms/internal/fn;->id:I

    iput-object p3, p0, Lcom/google/android/gms/internal/fn;->xV:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fn;->CREATOR:Lcom/google/android/gms/internal/fo;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fn;->CREATOR:Lcom/google/android/gms/internal/fo;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fo;->a(Lcom/google/android/gms/internal/fn;Landroid/os/Parcel;I)V

    return-void
.end method
