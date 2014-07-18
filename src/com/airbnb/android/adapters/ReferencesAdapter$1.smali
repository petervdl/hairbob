.class Lcom/airbnb/android/adapters/ReferencesAdapter$1;
.super Ljava/lang/Object;
.source "ReferencesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ReferencesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ReferencesAdapter;

.field final synthetic val$reference:Lcom/airbnb/android/models/Recommendation;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ReferencesAdapter;Lcom/airbnb/android/models/Recommendation;)V
    .registers 3

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/adapters/ReferencesAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReferencesAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ReferencesAdapter$1;->val$reference:Lcom/airbnb/android/models/Recommendation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/airbnb/android/adapters/ReferencesAdapter$1;->val$reference:Lcom/airbnb/android/models/Recommendation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Recommendation;->getRecommender()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    .line 64
    .local v0, "userId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/adapters/ReferencesAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReferencesAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ReferencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/adapters/ReferencesAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReferencesAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ReferencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "user_profile"

    invoke-static {v3, v0, v1, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    :cond_26
    return-void
.end method
