.class Lcom/airbnb/android/adapters/DiscoverAdapter$5;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getEnableLastMinuteCallout(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;I)V
    .registers 3

    .prologue
    .line 254
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$5;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$5;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v0, v0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenDiscoverEnableLmb(Landroid/content/Context;)V

    .line 259
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackDismissLmbHostUpsell()V

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$5;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method
