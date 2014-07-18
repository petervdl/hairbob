.class Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TripsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/TripsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field backgroundPhoto:Lcom/airbnb/android/views/AirImageView;

.field hostPicture:Lcom/airbnb/android/views/HaloImageView;

.field listingName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/TripsAdapter;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/TripsAdapter;Landroid/view/View;)V
    .registers 5
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/TripsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->backgroundPhoto:Lcom/airbnb/android/views/AirImageView;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 85
    return-void
.end method
