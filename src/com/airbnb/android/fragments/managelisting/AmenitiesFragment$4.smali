.class Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;
.super Ljava/lang/Object;
.source "AmenitiesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "amenitiesList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/AmenitiesItem;>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesList:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesList:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 169
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/android/models/AmenitiesItem;>;"
    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/AmenitiesItem;

    .line 171
    .local v1, "item":Lcom/airbnb/android/models/AmenitiesItem;
    invoke-virtual {v1}, Lcom/airbnb/android/models/AmenitiesItem;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_24

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_24

    .line 176
    .end local v1    # "item":Lcom/airbnb/android/models/AmenitiesItem;
    :cond_3a
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v3, v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setAmenities(Ljava/util/List;)V

    .line 177
    return-void
.end method
