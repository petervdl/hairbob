.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$7;
.super Ljava/lang/Object;
.source "LastMinuteListingsPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->setupListViewHeaderFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$7;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$7;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    # invokes: Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->viewRegularListingsAndFinish()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->access$000(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    .line 173
    return-void
.end method
