/**
 * Created by jackjoons on 2016/8/9.
 */
import java.security.MessageDigest;
class SHACodec {
    static encode={target->
        MessageDigest md = MessageDigest.getInstance('SHA');
        md.update(target.getBytes('GBK'));
        return new String(md.digest()).encodeAsBase64();
    }

}
