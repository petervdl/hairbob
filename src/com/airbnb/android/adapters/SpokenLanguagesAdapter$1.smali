.class Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;
.super Ljava/lang/Object;
.source "SpokenLanguagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

.field final synthetic val$holder:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;

.field final synthetic val$item:Lcom/airbnb/android/models/SpokenLanguage;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;Lcom/airbnb/android/models/SpokenLanguage;Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;)V
    .registers 4

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->this$0:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->val$item:Lcom/airbnb/android/models/SpokenLanguage;

    iput-object p3, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->val$holder:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->val$item:Lcom/airbnb/android/models/SpokenLanguage;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SpokenLanguage;->toggleSpoken()V

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->val$holder:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$1;->val$item:Lcom/airbnb/android/models/SpokenLanguage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SpokenLanguage;->isSpoken()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    return-void
.end method
