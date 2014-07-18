.class public final Lcom/google/android/gms/internal/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dw;


# instance fields
.field public final errorCode:I

.field public final nr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nv:J

.field public final orientation:I

.field public final oy:Ljava/lang/String;

.field public final qb:Ljava/lang/String;

.field public final qc:J

.field public final qd:Z

.field public final qe:J

.field public final qf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qg:Ljava/lang/String;

.field public final qh:J

.field public final qi:Ljava/lang/String;

.field public final qj:Z

.field public final qk:Ljava/lang/String;

.field public final ql:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/dw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dv;->CREATOR:Lcom/google/android/gms/internal/dw;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/dv;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/dv;->oy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;

    if-eqz p4, :cond_4a

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_f
    iput-object v2, p0, Lcom/google/android/gms/internal/dv;->nr:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/dv;->errorCode:I

    if-eqz p6, :cond_4c

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_19
    iput-object v2, p0, Lcom/google/android/gms/internal/dv;->ns:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/dv;->qc:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/dv;->qd:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/dv;->qe:J

    if-eqz p12, :cond_4e

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_27
    iput-object v2, p0, Lcom/google/android/gms/internal/dv;->qf:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/dv;->nv:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/dv;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/dv;->qh:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->qi:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dv;->qj:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->qk:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->ql:Ljava/lang/String;

    return-void

    :cond_4a
    const/4 v2, 0x0

    goto :goto_f

    :cond_4c
    const/4 v2, 0x0

    goto :goto_19

    :cond_4e
    const/4 v2, 0x0

    goto :goto_27
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dv;Landroid/os/Parcel;I)V

    return-void
.end method
