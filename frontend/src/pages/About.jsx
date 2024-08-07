import { Button, Result } from 'antd';

import useLanguage from '@/locale/useLanguage';

const About = () => {
  const translate = useLanguage();
  return (
    <Result
      status="info"
      title={'BillkolosSoft'}
      subTitle={translate('Do you need help on customize of this app')}
      extra={
        <>
          <p>
            Website : <a href="https://www.BillkolosSoftapp.com">www.BillkolosSoftapp.com</a>{' '}
          </p>
          <p>
            GitHub :{' '}
            <a href="https://github.com/BillkolosSoft/BillkolosSoft-erp-crm">
              https://github.com/BillkolosSoft/BillkolosSoft-erp-crm
            </a>
          </p>
          <Button
            type="primary"
            onClick={() => {
              window.open(`https://www.BillkolosSoftapp.com/contact-us/`);
            }}
          >
            {translate('Contact us')}
          </Button>
        </>
      }
    />
  );
};

export default About;
