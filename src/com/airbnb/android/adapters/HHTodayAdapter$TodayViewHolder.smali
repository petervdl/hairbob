.class Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;
.super Ljava/lang/Object;
.source "HHTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHTodayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayViewHolder"
.end annotation


# instance fields
.field arriveTime:Landroid/widget/TextView;

.field details:Landroid/widget/TextView;

.field listingDescription:Landroid/widget/TextView;

.field profileImage:Lcom/airbnb/android/views/HaloImageView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/HHTodayAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/HHTodayAdapter;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHTodayAdapter$TodayViewHolder;->this$0:Lcom/airbnb/android/adapters/HHTodayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
