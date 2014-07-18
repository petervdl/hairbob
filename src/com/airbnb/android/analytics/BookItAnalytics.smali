.class public Lcom/airbnb/android/analytics/BookItAnalytics;
.super Ljava/lang/Object;
.source "BookItAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    }
.end annotation


# static fields
.field public static final ADD_PAYMENT:Ljava/lang/String; = "ADD_PAYMENT"

.field public static final BOOK_IT:Ljava/lang/String; = "BOOK_IT"

.field public static final BOOK_IT_EVENT:Ljava/lang/String; = "book_it"

.field public static final CARD_NUMBER:Ljava/lang/String; = "CARD_NUMBER"

.field public static final CCV:Ljava/lang/String; = "CCV"

.field public static final CLICK:Ljava/lang/String; = "CLICK"

.field public static final COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final CONFIRM_AND_PAY_BUTTON:Ljava/lang/String; = "CONFIRM_AND_PAY_BUTTON"

.field public static final CONFIRM_AND_PAY_DIALOG:Ljava/lang/String; = "CONFIRM_AND_PAY_DIALOG"

.field public static final COUPON:Ljava/lang/String; = "COUPON"

.field public static final DATE_SELECT:Ljava/lang/String; = "DATE_SELECT"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final DONE_BUTTON:Ljava/lang/String; = "DONE_BUTTON"

.field public static final EXIT:Ljava/lang/String; = "EXIT"

.field public static final EXPIRY_DATE:Ljava/lang/String; = "EXPIRY_DATE"

.field public static final GENERAL:Ljava/lang/String; = "GENERAL"

.field public static final GUEST_SELECT:Ljava/lang/String; = "GUEST_SELECT"

.field public static final INQUIRY:Ljava/lang/String; = "INQUIRY"

.field public static final MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final PARAM_CARD_TYPE:Ljava/lang/String; = "CARD_TYPE"

.field public static final PARAM_CHECKIN_DATE:Ljava/lang/String; = "CHECKIN_DATE"

.field public static final PARAM_CHECKOUT_DATE:Ljava/lang/String; = "CHECKOUT_DATE"

.field public static final PARAM_COUNTRY:Ljava/lang/String; = "COUNTRY"

.field public static final PARAM_COUPON_AMOUNT:Ljava/lang/String; = "COUPON_AMOUNT"

.field public static final PARAM_DATE_TYPE:Ljava/lang/String; = "DATE_TYPE"

.field public static final PARAM_GUEST_COUNT:Ljava/lang/String; = "GUEST_COUNT"

.field public static final PARAM_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final PARAM_MESSAGE_LENGTH:Ljava/lang/String; = "MESSAGE_LENGTH"

.field public static final PARAM_OPTION:Ljava/lang/String; = "OPTION"

.field public static final PARAM_PAYMENT_TYPE:Ljava/lang/String; = "PAYMENT_TYPE"

.field public static final PARAM_POSTAL_CODE:Ljava/lang/String; = "POSTAL_CODE"

.field public static final PARAM_RESERVATION_ID:Ljava/lang/String; = "RESERVATION_ID"

.field public static final PARAM_SERVICE_FEE:Ljava/lang/String; = "SERVICE_FEE"

.field public static final PARAM_TOTAL_PRICE:Ljava/lang/String; = "TOTAL_PRICE"

.field public static final PAYMENT:Ljava/lang/String; = "PAYMENT"

.field public static final PAYMENT_POPUP:Ljava/lang/String; = "PAYMENT_POPUP"

.field public static final POSTAL_CODE:Ljava/lang/String; = "POSTAL_CODE"

.field public static final PRICE_BREAKDOWN:Ljava/lang/String; = "PRICE_BREAKDOWN"

.field public static final PRICE_UPDATE:Ljava/lang/String; = "PRICE_UPDATE"

.field public static final SELECT_COUNTRY:Ljava/lang/String; = "SELECT_COUNTRY"

.field public static final SEND_BUTTON:Ljava/lang/String; = "SEND_BUTTON"

.field public static final TERMS_AND_CONDITIONS:Ljava/lang/String; = "TERMS_AND_CONDITIONS"

.field public static final VALUE_BOOK:Ljava/lang/String; = "BOOK"

.field public static final VALUE_CANCEL:Ljava/lang/String; = "CANCEL"

.field public static final VALUE_CANCELLATION_POLICY:Ljava/lang/String; = "CANCELLATION_POLICY"

.field public static final VALUE_CREDIT_CARD:Ljava/lang/String; = "CREDIT_CARD"

.field public static final VALUE_GOOGLE_WALLET:Ljava/lang/String; = "GOOGLE_WALLET"

.field public static final VALUE_HOUSE_RULES:Ljava/lang/String; = "HOUSE_RULES"

.field public static final VALUE_MONTH:Ljava/lang/String; = "MONTH"

.field public static final VALUE_YEAR:Ljava/lang/String; = "YEAR"

.field public static final VIEW:Ljava/lang/String; = "VIEW"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 215
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "PAGE"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "SECTION"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "ACTION"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 217
    .local v2, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_3f

    .line 218
    invoke-virtual {p3}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 220
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    goto :goto_23

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3f
    return-object v2
.end method

.method public static trackAddPaymentCCVClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 205
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "CCV"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 206
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 207
    return-void
.end method

.method public static trackAddPaymentCardNumberClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 195
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "CARD_NUMBER"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 196
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 197
    return-void
.end method

.method public static trackAddPaymentDoneButtonClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 210
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "DONE_BUTTON"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 211
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 212
    return-void
.end method

.method public static trackAddPaymentExpiryDateClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 200
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "EXPIRY_DATE"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 201
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 202
    return-void
.end method

.method public static trackAddPaymentPostalCodeClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 190
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "POSTAL_CODE"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 191
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 192
    return-void
.end method

.method public static trackAddPaymentSelectCountryClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 185
    const-string/jumbo v1, "ADD_PAYMENT"

    const-string/jumbo v2, "SELECT_COUNTRY"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 186
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 187
    return-void
.end method

.method public static trackBookItConfirmAndPayButtonClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 131
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "CONFIRM_AND_PAY_BUTTON"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 132
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 133
    return-void
.end method

.method public static trackBookItConfirmAndPayDialogClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 136
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "CONFIRM_AND_PAY_DIALOG"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 137
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 138
    return-void
.end method

.method public static trackBookItCouponClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 141
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "COUPON"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 142
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 143
    return-void
.end method

.method public static trackBookItCouponDelete(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 146
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "COUPON"

    const-string/jumbo v3, "DELETE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 147
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 148
    return-void
.end method

.method public static trackBookItDateSelectClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 101
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "DATE_SELECT"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 102
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 103
    return-void
.end method

.method public static trackBookItError(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 151
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "ERROR"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 152
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 153
    return-void
.end method

.method public static trackBookItGeneralComplete(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 96
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "COMPLETE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 97
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 98
    return-void
.end method

.method public static trackBookItGeneralExit(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 86
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "EXIT"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 87
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 88
    return-void
.end method

.method public static trackBookItGeneralPriceUpdate(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 91
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "PRICE_UPDATE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 92
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 93
    return-void
.end method

.method public static trackBookItGeneralView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 81
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 82
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 83
    return-void
.end method

.method public static trackBookItGuestSelectClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 111
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "GUEST_SELECT"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 112
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 113
    return-void
.end method

.method public static trackBookItPaymentClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 116
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "PAYMENT"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 117
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 118
    return-void
.end method

.method public static trackBookItPaymentPopupClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 121
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "PAYMENT_POPUP"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 122
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 123
    return-void
.end method

.method public static trackBookItPriceBreakdownClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 106
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "PRICE_BREAKDOWN"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 107
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 108
    return-void
.end method

.method public static trackBookItTermsAndConditionsClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 126
    const-string/jumbo v1, "BOOK_IT"

    const-string/jumbo v2, "TERMS_AND_CONDITIONS"

    const-string/jumbo v3, "CLICK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 127
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 128
    return-void
.end method

.method public static trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "section"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 156
    const-string/jumbo v1, "INQUIRY"

    invoke-static {v1, p0, p1, p2}, Lcom/airbnb/android/analytics/BookItAnalytics;->makeBookItParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 157
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "book_it"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 158
    return-void
.end method

.method public static trackInquiryDateSelectClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 173
    const-string/jumbo v0, "DATE_SELECT"

    const-string/jumbo v1, "CLICK"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 174
    return-void
.end method

.method public static trackInquiryGeneralExit(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 165
    const-string/jumbo v0, "GENERAL"

    const-string/jumbo v1, "EXIT"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 166
    return-void
.end method

.method public static trackInquiryGeneralView(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 161
    const-string/jumbo v0, "GENERAL"

    const-string/jumbo v1, "VIEW"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 162
    return-void
.end method

.method public static trackInquiryGuestSelectClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 177
    const-string/jumbo v0, "GUEST_SELECT"

    const-string/jumbo v1, "CLICK"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 178
    return-void
.end method

.method public static trackInquiryMessageClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 169
    const-string/jumbo v0, "MESSAGE"

    const-string/jumbo v1, "CLICK"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 170
    return-void
.end method

.method public static trackInquirySendButtonClick(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 181
    const-string/jumbo v0, "SEND_BUTTON"

    const-string/jumbo v1, "CLICK"

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 182
    return-void
.end method
